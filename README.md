# qt

> Class structure Templates

1. QT နဲ့ပတ်သက်တဲ့ Design အပိုင်းတွေ ကို mainwindow.cpp မှာရေးပါ။ 

2. main() မှာတော့ mainwindow.cpp မှာ frondend design ရဲ့ လိုအပ်တဲ့ logic function များကို ရေးသားပါ။

3. တခြား service တစ်ခုနဲ့ ထပ်ချိတ်ရမယ့် ရှိလာပြီဆိုရင် API - centrialized processing - CLASS စနစ်တစ်ခုအနေနဲ့ထားရေးပါ။ 

4. emit, signal, slot, connect

5. target_link_libraries(setup_test PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)
//နောက်ထပ် thirdparty lib တွေနဲ့ ချိတ်လိုပါက ဒီမှာလာရောက်ချိတ်ဆက်ပါ။


```
sudo apt install qtcreator libqt5sql5-mysql
```


```
mysqldump -u root -p mydatabase > /path/to/backup/mydatabase_backup.sql
```
```
mysql -u root -p mydatabase < /path/to/backup/mydatabase_backup.sql
```

