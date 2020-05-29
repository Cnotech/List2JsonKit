# Edgeless插件包列表json生成套件

## 需要安装
* Microsoft Office Excel
* Python 3（含xlrd库）

## 如何使用
1. 修改`GetXls.cmd`开头处的temp变量，改为初始数据的输出目录
2. 将`GetXls.cmd`放在`插件包`文件夹中运行，程序会在输出目录生成`Data.txt`初始数据
3. 使用`Excel`打开`example.xlsx`的`Sheet1`工作表，选中`A2`单元格，在上方工具栏中选中`数据-获取外部数据-自文本`，导入`Data.txt`并以`_`作为分隔符分割
4. 使用替换工具将`.7z`替换为空
5. 保存Excel文件并退出，运行`example.bat`即可获得`data.json`

## 引用
https://github.com/zdhsoft/excel2json