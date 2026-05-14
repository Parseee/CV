#import "@preview/basic-resume:0.2.9": *

#let name = "Бабаков Илья"
#let location = "Москва, Долгопрудный"
#let email = "babakov.ia@phystech.edu"
#let github = "github.com/parseee"
#let phone = "+7 (938) 411-60-18"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  phone: phone,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

== Желаемая должность

#work(
  title: "C++ backend-программист / Разработчик системного ПО",
  company: "Программист, разработчик",
  dates: "Полный день",
)
- Занятость: полная, частичная, стажировка

== Опыт работы

#work(
  title: "АО \"МЦСТ\"",
  company: "Отдел компиляторов LLVM, младший программист",
  dates: dates-helper(start-date: "Июль 2025", end-date: "Август 2025"),
)
- Разработал алгоритм пропагации констант и внедрил его как плагин на C++ (LLVM-пасс)

#work(
  title: "Яндекс (Проектная деятельность)",
  company: "Разработчик / Исследователь",
  dates: "2025-2026",
)
- C-binding для YDB SDK: универсальный FFI биндинг для работы с SDK из любого языка
- Эвристические алгоритмы разрезания графов (≈1 млн вершин) для DWH

== Образование

#edu(
  institution: "МФТИ, Высшая школа программной инженерии",
  location: "Долгопрудный",
  dates: dates-helper(start-date: "2024", end-date: "2028"),
  degree: "Программная инженерия",
)
- Средний балл: 6.84/10.0

#edu(
  institution: "АНОО Физтех Лицей им. П. Л. Капицы",
  location: "Долгопрудный",
  dates: dates-helper(start-date: "2022", end-date: "2024"),
  degree: "Закончил с медалью, призер олимпиад по математике и информатике",
)

== Навыки

- #text("Программирование:", weight: "bold") C++20, C, Python,(RISC-V Assembler)
- #text("Технологии:", weight: "bold") Google Test, CI/CD, Docker, SQL, Git, Bash, Linux, Ceedling, LLVM API
- #text("Hardware:", weight: "bold") RISC-V, прерывания, таймеры (PWM), UART, I2C, SPI, 1wire

== Проекты и достижения

- #project(dates: "2026", name: "midi-контроллер на базе RISC-V", url: "github.com/Parseee/midi-riscv")
- #project(dates: "2024", name: "Транслятор языка", url: "github.com/Parseee/Matreshkaprak4")
- #generic-one-by-two(left: text("Стипендиат программы Сбера (Вклад в будущее)", weight: "bold"), right: "2026")
- #extracurriculars(activity: "Сборка ядра Linux и Pomodoro плагин для Rockbox", dates: "2023-2025")
- #text("Интересы: Спортивное программирование, легкая атлетика, фотография", weight: "bold")
