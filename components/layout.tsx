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
