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
