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
