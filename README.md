# DateConverter_Swift
A memory effective date converter class

#Usage
- Converting an NSDate object
```
let date = DateFormatter.convertDate(NSDate(), fromFormat: "MM DD,YYYY", toFormat: "YYYY-MM-DD HH:MM")
```

- Converting a String object
```
let date = DateFormatter.convertDate("12 19,1988", fromFormat: "MM DD,YYYY", toFormat: "YYYY-MM-DD HH:MM")
```
