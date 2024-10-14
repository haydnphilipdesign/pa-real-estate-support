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
