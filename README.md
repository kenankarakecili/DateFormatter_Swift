# KKDateFormatter_Swift
A memory effective date formatter class

#Usage
- Converting an NSDate object
```
let date = KKDateFormatter.convertDate(NSDate(), 
                                       fromFormat: "MM DD,YYYY",
                                       toFormat: "yyyy-MM-dd HH:MM")
```

- Converting a String object
```
let date = KKDateFormatter.convertDate("19.12.1988",
                                       fromFormat: "dd.MM.yyyy",
                                       toFormat: "yyyy-MM-dd")
```
