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
            <div key={index} className={`bg-gradient-to-br ${service.gradient} rounded-lg shadow-lg p-6 hover:scale-105 transition duration-300`}>
              <h3 className="text-xl font-semibold text-white mb-2">{service.title}</h3>
              <p className="text-blue-100 mb-4">{service.description}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
