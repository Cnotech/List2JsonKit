# Edgeless插件包列表json生成套件

## 需要安装
* Microsoft Office Excel
* Python 3（含xlrd库）

## 如何使用
1. 修改`GetXls.cmd`开头处的temp变量，改为初始数据的输出目录
2. 将`GetXls.cmd`放在`插件包`文件夹中运行，程序会在输出目录生成`Data.txt`初始数据
3. 使用`Excel`打开`example.xlsx`的`Sheet1`工作表，将`Data.txt`内的全部内容覆盖粘贴（跳过首行），点击右下方的粘贴选项，选择使用文本导入向导，以`_`作为分隔符分割
4. 使用替换工具将`.7z`替换为空
5. 保存Excel文件并退出，运行`example.bat`即可获得`data.json`

## 引用
https://github.com/zdhsoft/excel2json