# This file contains the seed data for the database.
# Run it before testing GraphQL queries.

if SolarSystem.all.empty?

  solar_systems = [
    {
      name: "Sol",
      age_in_bn: 4.571,
      description: <<~DESC
        The Sol System, also known as the Solar System, consists of the Sun, 
        eight planets including Earth, and various other celestial bodies like 
        moons, asteroids, and comets. It serves as our cosmic home and 
        provides valuable insights into planetary science and space exploration.
      DESC
    }
  ]

  solar_systems.each { |solar_system| SolarSystem.create!(solar_system) }

  stars = [
    {
      name: "Sun",
      radious_in_km: 696.340,
      mass: 1.989e30,
      surface_temperature_in_k: 5778e1,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        The Sun is the star at the center of the Solar System. It is a nearly
        perfect sphere of hot plasma, heated to incandescence by nuclear
        fusion reactions in its core, radiating the energy mainly as visible
        light and infrared radiation.
      DESC
    }
  ]

  stars.each { |star| Star.create!(star) }
  
  planets = [
    {
      name: "Mercury",
      position: 1,
      radious_in_km: 2_439.7,
      mass: 3.285e23,
      orbit_in_days: 87.97,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Mercury is the smallest and closest planet to the Sun in the Solar
        System. Its orbit around the Sun takes 87.97 Earth days, the shortest
        of all the Sun's planets. It is named after the Roman god Mercurius
        (Mercury), god of commerce, messenger of the gods, and mediator.
      DESC
    },
    {
    name: "Venus",
    position: 2,
    radious_in_km: 6_051.8,
    mass: 4.8675e24,
    orbit_in_days: 224.7,
    solar_system:SolarSystem.find_by(name: "Sol"),
    description: <<~DESC
      Venus is the second planet from the Sun. It is sometimes referred to
      as the "Morning Star" or the "Evening Star" due to its brightness.
      Venus has a thick atmosphere that traps heat, making it the hottest
      planet in our Solar System.
    DESC
    },
    {
      name: "Earth",
      position: 3,
      radious_in_km: 6_371.0,
      mass: 5.97237e24,
      orbit_in_days: 365.25,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Earth is the third planet from the Sun and the only known planet to
        support life. It has a diverse climate and a wide range of ecosystems,
        making it a unique and vibrant world.
      DESC
    },
    {
      name: "Mars",
      position: 4,
      radious_in_km: 3_389.5,
      mass: 6.4171e23,
      orbit_in_days: 687,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Mars is the fourth planet from the Sun. It is often called the "Red Planet"
        due to its reddish appearance. Mars has a thin atmosphere and distinct
        surface features including the largest volcano and deepest, longest canyon
        in the Solar System.
      DESC
    },
    {
      name: "Jupiter",
      position: 5,
      radious_in_km: 69_911,
      mass: 1.8982e27,
      orbit_in_days: 4_333,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Jupiter is the largest planet in our Solar System. It is a gas giant with a
        massive and powerful magnetic field. Jupiter has a complex system of rings
        and a multitude of moons, including the four largest known as the Galilean moons.
      DESC
    },
    {
      name: "Saturn",
      position: 6,
      radious_in_km: 58_232,
      mass: 5.6834e26,
      orbit_in_days: 10_759,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Saturn is famous for its stunning ring system, which is composed primarily
        of ice particles and debris. It is the sixth planet from the Sun and has a
        diverse array of moons, each with its own unique features.
      DESC
    },
    {
      name: "Uranus",
      position: 7,
      radious_in_km: 25_362,
      mass: 8.6810e25,
      orbit_in_days: 30_799,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Uranus is an ice giant known for its unique feature of rotating on its side.
        It has a bluish-green hue due to the presence of methane in its atmosphere.
        Uranus has a set of faint rings and a system of moons.
      DESC
    },
    {
      name: "Neptune",
      position: 8,
      radious_in_km: 24_622,
      mass: 1.02413e26,
      orbit_in_days: 60_190,
      solar_system: SolarSystem.find_by(name: "Sol"),
      description: <<~DESC
        Neptune is the eighth planet from the Sun and is characterized by its deep blue
        color. It is an ice giant with a turbulent atmosphere and strong winds. Neptune
        has a notable dark storm called the "Great Dark Spot."
      DESC
    }
  ]

  planets.each { |planet| Planet.create!(planet) }

else
  puts "Seed file was already run"
end
