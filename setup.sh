#!/bin/bash

# Create necessary directories
mkdir -p pages components public styles

# Create package.json
cat << EOF > package.json
{
  "name": "pa-real-estate-support-services",
  "version": "1.0.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "^13.4.4",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-icons": "^4.9.0",
    "@radix-ui/react-icons": "^1.3.0"
  },
  "devDependencies": {
    "@types/node": "^20.2.5",
    "@types/react": "^18.2.8",
    "typescript": "^5.1.3",
    "autoprefixer": "^10.4.14",
    "postcss": "^8.4.24",
    "tailwindcss": "^3.3.2"
  }
}
EOF

# Create next.config.js
cat << EOF > next.config.js
/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
}

module.exports = nextConfig
EOF

# Create tsconfig.json
cat << EOF > tsconfig.json
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "plugins": [
      {
        "name": "next"
      }
    ],
    "paths": {
      "@/*": ["./*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}
EOF

# Create pages/index.tsx
cat << EOF > pages/index.tsx
import { Layout } from '../components/layout'
import { HeroSection } from '../components/hero-section'
import { ServicesSection } from '../components/services-section'
import { FilterableServicesGallery } from '../components/filterable-services-gallery'
import { AboutSection } from '../components/about-section'
import { ContactForm } from '../components/contact-form'
import { TestimonialsSection } from '../components/testimonials-section'

export default function Home() {
  return (
    <Layout>
      <HeroSection />
      <ServicesSection />
      <FilterableServicesGallery />
      <AboutSection />
      <TestimonialsSection />
      <ContactForm />
    </Layout>
  )
}
EOF

# Create components/layout.tsx
cat << EOF > components/layout.tsx
import { FaEnvelope, FaPhone, FaFacebook, FaLinkedin, FaInstagram } from 'react-icons/fa'
import Link from 'next/link'

export function Layout({ children }: { children: React.ReactNode }) {
  return (
    <div className="flex flex-col min-h-screen">
      <header className="bg-white shadow-md">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <Link href="/" className="text-2xl font-bold text-blue-600">PARESS LLC</Link>
          <nav>
            <ul className="flex space-x-4">
              <li><Link href="#services" className="text-gray-600 hover:text-blue-600">Services</Link></li>
              <li><Link href="#about" className="text-gray-600 hover:text-blue-600">About</Link></li>
              <li><Link href="#contact" className="text-gray-600 hover:text-blue-600">Contact</Link></li>
            </ul>
          </nav>
        </div>
      </header>
      <main className="flex-grow">
        {children}
      </main>
      <footer className="bg-gray-800 text-white py-8">
        <div className="container mx-auto px-4">
          <div className="flex flex-col md:flex-row justify-between items-center">
            <div className="mb-4 md:mb-0">
              <p>&copy; 2023 PA Real Estate Support Services LLC. All rights reserved.</p>
            </div>
            <div className="flex space-x-4">
              <a href="mailto:info@paressllc.com" className="hover:text-blue-500 transition duration-300">
                <FaEnvelope size={24} />
              </a>
              <a href="tel:+15701234567" className="hover:text-blue-500 transition duration-300">
                <FaPhone size={24} />
              </a>
              <a href="#" className="hover:text-blue-500 transition duration-300">
                <FaFacebook size={24} />
              </a>
              <a href="#" className="hover:text-blue-500 transition duration-300">
                <FaLinkedin size={24} />
              </a>
              <a href="#" className="hover:text-blue-500 transition duration-300">
                <FaInstagram size={24} />
              </a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  )
}
EOF

# Create components/hero-section.tsx
cat << EOF > components/hero-section.tsx
import Link from 'next/link'

export function HeroSection() {
  return (
    <div className="relative h-screen">
      <video className="absolute w-full h-full object-cover" autoPlay loop muted playsInline>
        <source src="/placeholder.svg?height=1080&width=1920" type="video/mp4" />
      </video>
      <div className="absolute inset-0 bg-black bg-opacity-50"></div>
      <div className="relative z-10 flex flex-col items-center justify-center h-full text-center text-white px-4">
        <h1 className="text-4xl md:text-6xl font-bold mb-4">PA Real Estate Support Services LLC</h1>
        <p className="text-xl md:text-2xl mb-8">Reliable transaction coordination for real estate professionals</p>
        <Link href="#contact" className="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-full transition duration-300">
          Get Started
        </Link>
      </div>
    </div>
  )
}
EOF

# Create components/services-section.tsx
cat << EOF > components/services-section.tsx
export function ServicesSection() {
  const services = [
    { title: "Transaction Coordination", description: "Streamline your real estate transactions", gradient: "from-blue-400 to-blue-600" },
    { title: "Document Management", description: "Efficient handling of all paperwork", gradient: "from-blue-500 to-blue-700" },
    { title: "Deadline Tracking", description: "Stay on top of key deadlines", gradient: "from-blue-600 to-blue-800" },
    { title: "Client Communication", description: "Keep clients informed throughout the process", gradient: "from-blue-700 to-blue-900" },
  ]

  return (
    <section id="services" className="py-16 bg-gray-100">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-center mb-12">Our Services</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {services.map((service, index) => (
            <div key={index} className={\`bg-gradient-to-br \${service.gradient} rounded-lg shadow-lg p-6 hover:scale-105 transition duration-300\`}>
              <h3 className="text-xl font-semibold text-white mb-2">{service.title}</h3>
              <p className="text-blue-100 mb-4">{service.description}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
EOF

# Create components/filterable-services-gallery.tsx
cat << EOF > components/filterable-services-gallery.tsx
'use client'

import { useState } from 'react'

export function FilterableServicesGallery() {
  const [filter, setFilter] = useState("all")
  const services = [
    { title: "Transaction Coordination", description: "Streamline your real estate transactions", category: "coordination" },
    { title: "Document Management", description: "Efficient handling of all paperwork", category: "document" },
    { title: "Deadline Tracking", description: "Stay on top of key deadlines", category: "tracking" },
    { title: "Client Communication", description: "Keep clients informed throughout the process", category: "communication" },
  ]

  const filteredServices = filter === "all" ? services : services.filter(service => service.category === filter)

  return (
    <section className="py-16">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-center mb-12">Explore Our Services</h2>
        <div className="flex flex-wrap justify-center space-x-4 mb-8">
          <button onClick={() => setFilter("all")} className={\`px-4 py-2 rounded-full mb-2 \${filter === 'all' ? 'bg-blue-600 text-white' : 'bg-gray-200'}\`}>All</button>
          <button onClick={() => setFilter("coordination")} className={\`px-4 py-2 rounded-full mb-2 \${filter === 'coordination' ? 'bg-blue-600 text-white' : 'bg-gray-200'}\`}>Transaction Coordination</button>
          <button onClick={() => setFilter("document")} className={\`px-4 py-2 rounded-full mb-2 \${filter === 'document' ? 'bg-blue-600 text-white' : 'bg-gray-200'}\`}>Document Management</button>
          <button onClick={() => setFilter("tracking")} className={\`px-4 py-2 rounded-full mb-2 \${filter === 'tracking' ? 'bg-blue-600 text-white' : 'bg-gray-200'}\`}>Deadline Tracking</button>
          <button onClick={() => setFilter("communication")} className={\`px-4 py-2 rounded-full mb-2 \${filter === 'communication' ? 'bg-blue-600 text-white' : 'bg-gray-200'}\`}>Client Communication</button>
        </div>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredServices.map((service, index) => (
            <div key={index} className="bg-white rounded-lg shadow-md p-6">
              <h3 className="text-xl font-semibold mb-2">{service.title}</h3>
              <p className="text-gray-600">{service.description}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
EOF

# Create components/about-section.tsx
cat << EOF > components/about-section.tsx
import Link from 'next/link'
import Image from 'next/image'

export function AboutSection() {
  return (
    <section id="about" className="py-16 bg-gray-100">
      <div className="container mx-auto px-4">
        <div className="flex flex-col md:flex-row items-center">
          <div className="md:w-1/2 mb-8 md:mb-0">
            <Image src="/placeholder.svg" alt="About PA Real Estate Support Services" width={600} height={400} className="rounded-lg shadow-lg" />
          </div>
          <div className="md:w-1/2 md:pl-12">
            <h2 className="text-3xl font-bold mb-4">About Us</h2>
            <p className="text-gray-700 mb-4">
              PA Real Estate Support Services LLC is dedicated to providing top-notch transaction coordination and support to real estate professionals. With our expertise and attention to detail, we help streamline your real estate transactions, allowing you to focus on growing your business.
            </p>
            <p className="text-gray-700 mb-4">
              Our team of experienced coordinators ensures that every aspect of your transaction is handled efficiently and professionally, from document management to deadline tracking and client communication.
            </p>
            <Link href="#contact" className="inline-block bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-full transition duration-300">
              Learn More
            </Link>
          </div>
        </div>
      </div>
    </section>
  )
}
EOF

# Create components/contact-form.tsx
cat << EOF > components/contact-form.tsx
'use client'

import { useState } from 'react'
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"

export function ContactForm() {
  const [form, setForm] = useState({ name: "", email: "", message: "" })

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    setForm({ ...form, [e.target.name]: e.target.value })
  }

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    console.log("Form Submitted", form)
    setForm({ name: "", email: "", message: "" })
  }

  return (
    <section id="contact" className="py-16">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-center mb-12">Get in Touch</h2>
        
        <form className="max-w-xl mx-auto" onSubmit={handleSubmit}>
          <div className="mb-4">
            <Input
              type="text"
              name="name"
              value={form.name}
              onChange={handleChange}
              placeholder="Your Name"
              required
            />
          </div>
          <div className="mb-4">
            <Input
              type="email"
              name="email"
              value={form.email}
              onChange={handleChange}
              placeholder="Your Email"
              required
            />
          </div>
          <div className="mb-4">
            <Textarea
              name="message"
              value={form.message}
              onChange={handleChange}
              placeholder="Your Message"
              required
            />
          </div>
          <Button type="submit" className="w-full">
            Send Message
          </Button>
        </form>
      </div>
    </section>
  )
}
EOF

# Create components/testimonials-section.tsx
cat << EOF > components/testimonials-section.tsx
import Image from 'next/image'

export function TestimonialsSection() {
  const testimonials = [
    {
      name: "John Doe",
      role: "Real Estate Agent",
      content: "PA Real Estate Support Services has been a game-changer for my business. Their attention to detail and efficient handling of transactions have allowed me to focus on growing my client base.",
      avatar: "/placeholder.svg?height=100&width=100"
    },
    {
      name: "Jane Smith",
      role: "Broker",
      content: "I've been working with PARESS LLC for over a year now, and I'm consistently impressed by their professionalism and expertise. They've become an invaluable part of my team.",
      avatar: "/placeholder.svg?height=100&width=100"
    },
    {
      name: "Mike Johnson",
      role: "Property Manager",
      content: "The team at PA Real Estate Support Services is responsive, thorough, and always goes the extra mile. I highly recommend their services to any real estate professional looking to streamline their operations.",
      avatar: "/placeholder.svg?height=100&width=100"
    }
  ]

  return (
    <section className="py-16 bg-gray-100">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-center mb-12">What Our Clients Say</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {testimonials.map((testimonial, index) => (
            <div key={index} className="bg-white rounded-lg shadow-md p-6">
              <div className="flex items-center mb-4">
                <Image src={testimonial.avatar} alt={testimonial.name} width={50} height={50} className="rounded-full mr-4" />
                <div>
                  <h3 className="font-semibold">{testimonial.name}</h3>
                  <p className="text-gray-600 text-sm">{testimonial.role}</p>
                </div>
              </div>
              <p className="text-gray-700">{testimonial.content}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
EOF

# Create styles/globals.css
cat << EOF > styles/globals.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

# Create .gitignore
cat << EOF > .gitignore
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# local env files
.env*.local

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts
EOF

# Create README.md
cat << EOF > README.md
# PA Real Estate Support Services LLC Website

This is the official website for PA Real Estate Support Services LLC, built with Next.js and Tailwind CSS.

## Getting Started

First, run the development server:

\`\`\`bash
npm run dev
# or
yarn dev
\`\`\`

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
EOF

# Initialize git repository and make initial commit
git init
git add .
git commit -m "Initial commit"

# Install dependencies
npm install

echo "Setup complete! Your project is ready to be pushed to GitHub."
EOF

7. Make the script executable: