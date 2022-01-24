# Bootstrap从何而来

  + [初识Bootstrap](#初识bootstrap)

## 初识Bootstrap

***

  + Bootstrap框架提供了优雅的HTML和CSS规范，是由动态CSS语言写成，完美地解决了页面响应式设计的难题。因此，Bootstrap框架推出后颇受欢迎，已经成为Web开发人员实际意义上的设计规范，目前许多优秀的开源前端框架均是基于Bootstrap源码性能优化而来的。

  + 响应式设计：页面可以根据用户的终端设备尺寸或浏览器的窗口尺寸来自动地进行布局调整。

  + 响应式设计四大原则

    - 移动优先还是PC优先

    - 内容流：内容随着移动屏幕尺寸越来越小，内容所占的垂直空间也越来越多，导致内容会向下方延伸。

    - 位图还是矢量图

      - 位图格式：jpg、png和gif

      - 矢量图：SVG或图标字体

      - 矢量图往往更小一些，适合移动展示，但是有些图标有很多曲线，可能导致它的大小比位图还大。

    - 相对单位还是固定单位

      - 相对单位：px/em/ex/%

      - 固定单位：cm/pt/in/pc/mm

| Measurement Unit | Description | Example |
| ---------------- | ----------- | ------- |
| px | 以屏幕像素（Pixel）为单位定义度量。譬如，Windows的用户所使用的分辨率一般是96像素/英寸，而Mac的用户所使用的分辨率一般是72像素/英寸。 | p {padding: 25px;} |
| em | 因为em单位等于给定字体的大小，如果您将字体指定为12pt，则每个em单位将为12pt；因此，2em将是24pt。 | p {letter-spacing: 7em;} |
| ex | 相对于字符“x”的高度，此高度通常为字体尺寸的一半。 | p {font-size: 24pt; line-height: 3ex;} |
| % | 将度量定义为相对于另一个值的百分比，通常是一个封闭元素。 | p {font-size: 16pt; line-height: 125%;} |
| cm | 厘米（Centimeter），1in = 2.54cm = 25.4 mm = 72pt = 6pc。 | div {margin-bottom: 2cm;} |
| pt | 点（Point），1in = 2.54cm = 25.4 mm = 72pt = 6pc。 | body {font-size: 18pt;} |
| in | 英寸（Inch），1in = 2.54cm = 25.4 mm = 72pt = 6pc。 | p {word-spacing: .15in;} |
| pc | 派卡（Pica），1in = 2.54cm = 25.4 mm = 72pt = 6pc。 | 	p {font-size: 20pc;} |
| mm | 毫米（Millimeter），1in = 2.54cm = 25.4 mm = 72pt = 6pc。 | p {word-spacing: 15mm;} |

  + Bootstrap设计目标

    - 优先针对移动设备：Bootstrap3版本默认的CSS本身就是对移动设备优先友好支持。

  + Bootstrap框架的特点（响应式设计的特点）：

    - 为开发人员创建接口提供了一个简洁统一的解决方案。

    - 包含了功能强大的内置组件，易于定制。

    - 提供了基于Web开发的定制。

    - 最重要的是框架开源的，设计人员可以通过修改框架源码满足特定需求。
