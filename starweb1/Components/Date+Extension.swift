import Foundation

extension Date {
    static var capitalizedFirstLettersOfWeekdays: [String] {
        Calendar.current.shortWeekdaySymbols.map { $0.prefix(1).capitalized }
    }

    static var fullMonthNames: [String] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return (1...12).map {
            dateFormatter.string(from: Calendar.current.date(from: DateComponents(year: 2000, month: $0))!)
        }
    }

    var startOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }

    var endOfMonth: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: Calendar.current.dateInterval(of: .month, for: self)!.end)!
    }

    var startOfPreviousMonth: Date {
        Calendar.current.date(byAdding: .month, value: -1, to: startOfMonth)!
    }

    var numberOfDaysInMonth: Int {
        Calendar.current.range(of: .day, in: .month, for: self)!.count
    }

    var sundayBeforeStart: Date {
        Calendar.current.date(byAdding: .day, value: -Calendar.current.component(.weekday, from: startOfMonth) + 1, to: startOfMonth)!
    }

    var calendarDisplayDays: [Date] {
        var days: [Date] = []
        var current = sundayBeforeStart

        while current <= endOfMonth || days.count % 7 != 0 {
            days.append(current)
            current = Calendar.current.date(byAdding: .day, value: 1, to: current)!
        }

        return days
    }

    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}
