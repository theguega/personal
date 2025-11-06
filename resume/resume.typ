#import "@preview/simple-technical-resume:0.1.0": *

#let name = "Theo Guegan"
#let phone = "+33 7 82 95 45 55"
#let email = "theo.guegan.perso@gmail.com"
#let github = "theguega"
#let linkedin = "guegan-theo"
#let personal-site = "theguega.github.io/personal/"

#show: resume.with(
  top-margin: 0.4in,
  personal-info-font-size: 8pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github
)

#custom-title("Skills")[
  #skills()[
    - *Programming:* C/C++, Python, Rust, MATLAB, Bash, Lua, Go
    - *Embedded Systems:* Embedded Linux, Multithreading, HAL, UART/I2C/SPI, CAN, HITL Debugging
    - *Robotics:* RTOS, ROS/ROS2, Behavior Trees, Computer Vision, Gazebo, MuJoCo, Gymnasium
    - *Tools:* Git, Linux, CMake, Makefile, Docker, Test Automation
    - *AI/ML:* PyTorch, Scikit-Learn, Deep Learning, RL, Imitation Learning
  ]
]

#custom-title("Education")[
  #education-heading(
    "Université de Technologie de Compiègne (UTC)",
    "Compiègne, France",
    "Master’s of Science",
    "Computer Science",
    datetime(year: 2021, month: 9, day: 1),
    datetime(year: 2026, month: 6, day: 1)
  )[
    - Specialization: Embedded Computing, Autonomous Systems
    - GPA: 4.0/4.0
    - Coursework: Robotics Control, Embedded Systems, Autonomy, Kinematics
  ]

  #education-heading(
    "University of Waterloo",
    "Waterloo, Canada",
    "Exchange Student - Computer Engineering",
    "",
    datetime(year: 2025, month: 9, day: 1),
    datetime(year: 2025, month: 12, day: 1)
  )[
    - Coursework: Deep Learning, Image Processing, Computer Networks, Deep Reinforcement Learning
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Embedded Drone Software Engineer Intern",
    "Thales Land & Air Systems",
    "Vélizy-Villacoublay, France",
    datetime(year:2024, month:9, day:1),
    datetime(year:2025, month:2, day:1)
  )[
    - Architected a real-time embedded Lua scripting engine in modern C++ (TDD) for on-drone customization, reducing mission prototyping time by 4×.
    - Streamlined build processes using Makefiles and an Alchemy build system for cross-compilation and deployment to embedded Linux targets.
    - Integrated a local LLM using Rust and Docker for natural-language drone commands, achieving 85% accuracy and demonstrating advanced system integration.
    - Contributed to hardware/software debugging and validated system behavior in real-world scenarios, including a high-profile live demo.
  ]

  #work-heading(
    "Autonomous Vehicle Control Lead",
    "UTonome – UTAC Challenge",
    "Compiègne, France",
    datetime(year:2024, month:2, day:1),
    datetime(year:2025, month:6, day:1)
  )[
    - Designed and implemented target-based navigation, adaptive cruise control, and obstacle avoidance algorithms in MATLAB, achieving 99% safety in simulation.
    - Led system integration, porting control software to a Renault Zoe using Python and ROS for on-hardware validation and testing.
    - Directed the development of an autonomous navigation stack that secured 1st School Award (2024) and Open Category (2025).
  ]
]

#custom-title("Projects")[
  #project-heading("Neural Surrogate for Model Predictive Control")[
    - Developed a neural surrogate for MPC comparing SVMs, MLPs, and RNNs to approximate optimal control policies.
    - Benchmarked against RL baselines using RMSE, tracking error, constraint violations, and real-time feasibility.
  ]

  #project-heading("Real-Time Kernel (RTOS)")[
    - Built a preemptive RTOS on STM32H747I-DISCO with mutexes, semaphores, and priority inversion handling.
    - Implemented both in Rust (stm32-hal) and C for bare-metal control, showcasing deep embedded systems expertise.
  ]

  #project-heading("LeRobot: Teleoperated Robotic Arm")[
    - Built dual-arm robotic system achieving 80% success at 50 Hz using π0 general VLA.
    - Explored reinforcement and imitation learning (PyTorch, HuggingFace) for teleoperation.
  ]
]
