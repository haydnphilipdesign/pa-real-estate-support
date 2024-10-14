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
