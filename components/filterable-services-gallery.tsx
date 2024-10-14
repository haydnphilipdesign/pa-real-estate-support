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
          <button onClick={() => setFilter("all")} className={`px-4 py-2 rounded-full mb-2 ${filter === 'all' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>All</button>
          <button onClick={() => setFilter("coordination")} className={`px-4 py-2 rounded-full mb-2 ${filter === 'coordination' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>Transaction Coordination</button>
          <button onClick={() => setFilter("document")} className={`px-4 py-2 rounded-full mb-2 ${filter === 'document' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>Document Management</button>
          <button onClick={() => setFilter("tracking")} className={`px-4 py-2 rounded-full mb-2 ${filter === 'tracking' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>Deadline Tracking</button>
          <button onClick={() => setFilter("communication")} className={`px-4 py-2 rounded-full mb-2 ${filter === 'communication' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>Client Communication</button>
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
