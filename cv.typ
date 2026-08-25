#import "template.typ": *

#show: cv

//----------------------------------------------------------------------
// HEADER
//----------------------------------------------------------------------

#two-col(
  stack(
    spacing: 0.4em,
    boxed([KRZYSZTOF], size: 23pt),
    boxed([CIEŚLIK], size: 23pt),
    v(0.35em),
    text(size: 16pt)[Embedded Developer],
  ),
  stack(
    spacing: 0.85em,
    icon-line(fa.location, [Gdańsk, Pomerania, Poland]),
    icon-line(fa.phone, [+48 REDACTED]),
    icon-line(fa.at, [krzysztofcieslik875\@gmail.com]),
    icon-line(
      fa.linkedin,
      link("https://www.linkedin.com/in/krzysztof-cieślik-968128223")[linkedin.com/in/krzysztof-cieślik-968128223],
      font: fa-brands,
    ),
    icon-line(
      fa.github,
      link("https://github.com/Hathor875")[github.com/Hathor875],
      font: fa-brands,
    ),
  ),
)

//----------------------------------------------------------------------
// SUMMARY
//----------------------------------------------------------------------

#cvsect[Summary]

I am an embedded and electronics developer with 2 years of professional experience, working
mainly with STM32 bare-metal systems, communication protocols, and PCB design. I combine
practical skills in electronics, automation, and mechatronics with programming in C, C++, and
Python, applying them in the development of new devices, prototypes, and testing tools.

I have experience working independently and in R&D teams, including automated hardware
validation, measurement equipment operation, and prototyping (3D printing, small CO#sub[2] laser).
My background also covers hydraulics, pneumatics, and mechanical design from my earlier
automation work. I continuously expand my skills in modern embedded software, clean
architecture, and reliable engineering practices.

//----------------------------------------------------------------------
// EXPERIENCE
//----------------------------------------------------------------------

#cvsect[Professional Experience]

#entrylist(
  entry(
    [10.2024--present],
    [Programmer -- Electronic Designer],
    [RADMOR S.A., Gdynia],
    [Electronic circuit design and programming, prototype development, R&D work],
  ),
  entry(
    [07.2024--10.2024],
    [R&D Department Intern],
    [RADMOR S.A., Gdynia],
    [R&D team support, electronic equipment testing and documentation],
  ),
  entry(
    [02.2024--10.2024],
    [Programming Tutor for children and teenagers],
    [Giganci Programowania, Gdańsk],
    [Instruction in programming fundamentals, Python, and algorithms],
  ),
  entry(
    [12.2023--06.2024],
    [Computer Laboratory Technician],
    [ManpowerGroup, Gdańsk],
    [Computer hardware maintenance and repair, lab administration],
  ),
  entry(
    [08.2022--01.2024],
    [Facility Technician],
    [Sodexo, Gdańsk],
    [Electrical systems maintenance and repair, technical facility support in a skyscraper],
  ),
  entry(
    [07.2022--09.2022],
    [Automation Technician],
    [Ceramika Paradyż, Opoczno],
    [PLC programming, IT support and maintenance],
  ),
  entry(
    [06.2021--09.2021],
    [Automation Technician],
    [Cersanit Group, Opoczno],
    [Production machine maintenance and process continuity],
  ),
  entry(
    [07.2020--09.2020],
    [Electrician],
    [PKP Intercity Remtrak Sp. z o.o., Opoczno],
    [Repair of electrical systems in passenger railway cars],
  ),
)

//----------------------------------------------------------------------
// EDUCATION
//----------------------------------------------------------------------

#cvsect[Education]

#entrylist(
  entry(
    [10.2022--2027],
    [Computer Science, BEng (inż.)],
    [Polish-Japanese Academy of Information Technology, Warsaw],
    [Specialization in Web Applications. Studied part-time alongside full-time
      work; engineering thesis defended, degree expected in 2027.],
  ),
)

//----------------------------------------------------------------------
// KEY SKILLS
//----------------------------------------------------------------------

#cvsect[Key Skills]

#two-col(
  [
    - Python
    - Electronics
    - Electrical Engineering
    - Automation
    - Embedded Systems
    - Communication Protocols (I2C, SPI, Ethernet)
  ],
  [
    - Automated Hardware Validation (Python)
    - PCB and Circuit Design
    - Microcontroller Programming (mainly STM32)
    - Equipment Diagnostics and Repair
    - C/C++
    - Linux
  ],
)

//----------------------------------------------------------------------
// LANGUAGES
//----------------------------------------------------------------------

#cvsect[Languages]

- Polish -- native
- English -- B1

#pagebreak()

//----------------------------------------------------------------------
// PAGE 2 — NARRATIVE
//----------------------------------------------------------------------

#cvsect[More About Me]

I am an embedded developer with a multidisciplinary background that combines electronics,
automation, software engineering, and mechanical design. I enjoy working on projects where
hardware and software intersect, and where thoughtful engineering decisions make systems not
only functional, but reliable, understandable, and maintainable.

My earlier experience in industrial automation shaped my engineering mindset: precision,
robustness, and problem-solving under pressure. This foundation, combined with embedded
software development and prototyping skills, influences the way I design systems today. I
value clarity, predictable behavior, and solutions that scale over time rather than quick
fixes that create technical debt.

Beyond electronics and programming, I work with 3D printing, mechanical modeling (FreeCAD,
OpenSCAD), and small CO#sub[2] laser machining. I also build physical prototypes and test rigs,
solder SMD/BGA components, and operate lab equipment such as oscilloscopes, signal
generators, power analyzers, and VNA instruments. This hands-on experience helps me design
systems that account for physical reality, not only theory.

What motivates me most is creating tools, devices, and workflows that make engineering
smoother, clearer, and more enjoyable for the people who use them---whether it's a team,
future maintainers, or my future self.

#cvsect[Engineering Philosophy]

I believe good engineering is a craft. It requires intention, documentation, and thoughtful
architecture. My approach focuses on designing systems that are easy to extend, test, and
reason about. Instead of relying on shortcuts or tightly coupled designs, I invest in
structure and clarity---from consistent workflows and CI/CD to well-documented interfaces
and reproducible development environments.

Clean architecture, maintainability, traceability, and solid engineering practices (SOLID,
modular design, layered firmware structure) guide my work. I strive to build solutions that
"ratchet forward": each iteration should make the system stronger, cleaner, and easier to
maintain.

#cvsect[Engineering Thesis Project]

As the leader of a five-person engineering team, I developed a system for creating
structured technical documents with templating, metadata management, and automatic
versioning. The project was built in Python (FastAPI) with a React-based GUI running inside
Tauri, allowing cross-platform distribution and a native-application feel.

My responsibilities included:

- architecture design and toolchain definition
- CI/CD pipeline development
- workflow automation and project structure
- documentation standards and requirement gathering
- internal team tools (time tracking, communication utilities)
- maintenance of the local hosting environment for services

This project reflects how I work: treating software as a well-designed system rather than a
collection of scripts. I place strong emphasis on clear separation of concerns,
maintainability, and reproducibility so the application can evolve with the team's needs.

#cvsect[Why This Page Exists]

A résumé lists skills and history. This page explains how I think, how I approach
engineering problems, and what drives my work. If you want a deeper understanding of what I
bring to a project or a team, this narrative is designed to provide that context.
