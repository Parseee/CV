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

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */
== Образование

#edu(
  institution: "АНОО Физтех Лицей им. П. Л. Капицы",
  location: "Долгопрудный",
  dates: dates-helper(start-date: "2022", end-date: "2024"),
  degree: "Закончил с медалью, призер олимпиад по математике и информатике",
)

#edu(
  institution: "МФТИ, Высшая школа программной инженерии",
  location: "Долгопрудный",
  dates: dates-helper(start-date: "2024", end-date: "2028"),
  degree: "Программная инженерия",
)
- Средний балл: 6.84\/10.0
- #text("Навыки", weight: "bold"):
  - Алгоритмы и Структуры данных, Операционные системы, C, C++20, ООП и принципы проектирования, python-скриптинг
  - Google Test, Ceedling, понимание и опыт в настройке CI/CD
  - Работа с микроконтроллерами, отладка
    - прерывания, таймеры (PWM), протоколы взамодействия(UART, I2C, SPI, 1wire), основные паттерны работы с железом, Ceedling, отладка с логическим анализатором Salae Logic
  - CI, Docker, Linux, пакетные менеджеры и тулчейны
  - Английский язык (уровнь B2/C1)
  - Формальные языки и теория компиляторов, Дискретная математика и математическая логика
  - Bash, Latex, typst, Markdown для оформления отчетов и документации
  - Высшая математика
  - Основы ML

== Опыт работы
#work(
  title: "Системный разработчик",
  company: "Yadro",
  dates: dates-helper(start-date: "Июль 2026", end-date: "Сентябрь 2026")
)
- прохожу стажировку в настоящий момент

#work(
  title: "Отдел компиляторов LLVM, младший программист",
  company: "АО \"МЦСТ\"",
  dates: dates-helper(start-date: "Июль 2025", end-date: "Август 2025"),
)
- Разработал алгоритм пропагации констант и внедрил его как плагин на C++(LLVM-пасс)

== Профессиональные интересы
- #extracurriculars(activity: "Программирование СНК RISC-V", dates: "2026")
  - работа с микроконтроллерами, прерываниями и датчиками с библиотеками и на регистрах. Ассемблер RISC-V
- #extracurriculars(activity: "Операционные системы", dates: "2023-2025")
  - структура и функции компонентов операционных систем, системные вызовы, архитектура Linux и внутреннее устройство. Есть опыт сборки ядра и добавления новых расширений
- #text("Компиляторы и языки программирования", weight: "bold")
  - оптимизирующие компиляторы (LLVM-API), транслятор своего ЯП
- #text("Многопоточное программирование", weight: "bold")
  - примитивы синхронизации и средства ОС для реализации многопоточности (epoll, io_uring, различные реализации корутин)
- #text("Спортивное программирование", weight: "bold")

== Pet-проекты и достижения
- #project(
    dates: "2026",
    name: "C-binding для YDB SDK (сейчас в разработке)",
    url: "https://github.com/Parseee/ydb-c-binding",
  )
  - Проект от Яндекса. Универсальный FFI биндинг для работы с SDK YDB из любого языка
- #project(
    dates: "2026",
    name: "midi-контроллер на базе RISC-V микроконтроллера",
    url: "https://github.com/Parseee/midi-riscv",
  )
  - Проект в рамках курса RISC-V. serial-midi контроллер с дисплеем для метаданных.
- #project(dates: "2025", name: "Эвристические алгоритмы разрезания графов для DWH")
  - Проект от Яндекса. Находили алгоритмы для оптимального разрезания графов (≈млн вершин)
// - #project(dates: "2024", name: "Симулятор доставки", role: "", url: "")
//   - Сделал бекенд для симулятора доставки бухгалтерии на C++
- #generic-two-by-two(
    top-left: text("Стипендиат программы Сбера", weight: "bold"),
    top-right: "2026",
    bottom-left: "Фонд вклад в будущее",
    bottom-right: "",
  )
- #project(dates: "2024", name: "Транслятор языка", role: "", url: "https://github.com/Parseee/Matreshkaprak4")
  - Транслятор собственного Lisp-подобного языка, с внутренним представлением
- #extracurriculars(activity: "Pomodoro плагин", dates: "2023")
  - плагин Pomodoro-таймер для uLinux-подобной ОС для плееров Rockbox

== Навыки и интересы
- #text("Фотография, легкая атлетика, вычислительная техника", weight: "bold")
