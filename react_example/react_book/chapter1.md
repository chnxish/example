# React入门

  + React是Fackbook创建的一个开源项目，它提供了一种在Javascript中构建用户界面的全新方式。

  + [基础](#基础)

## 基础

***

  + Node.js和npm

    - JavaScript自诞生之日起就运行在浏览器上，但是通过Node.js的开源命令行工具，可以使JavaScript运行在你的本地计算机和服务器上。

    - npm（Node Package Manager）

    - [Node.js](https://nodejs.org)

  + React

    - React是一种使用JavaScript和XML技术构建可组合用户界面的引擎

    - 初始化一个React项目

      - create-react-app

        - npm install --global create-react-app

        - create-react-app project_name

        - cd project_name && npm start

    - React的组件可以把JavaScript、HTML和CSS的功能放在一个文件中，实现真正的组件封装。

    - React的理念：UI = render(data)

    - 对于开发者来说，重要的是区分开哪些属于data，哪些属于render，想要更新用户界面，要做的就是更新data，用户界面自然会做出相应，所以React实践的也是“响应式编程”（Reactive Programming）的思想。

  + JSX

    - JSX是JavaScript的语法扩展（eXtension），让我们在JavaScript中可以编写HTML一样的代码。

    - JSX中使用的“元素”不局限于HTML中的元素，可以是任何一个React组件。

    - React判断一个元素是HTML元素还是React组件的原则就是看第一个字母是否大写。

  + Virtual DOM

    - React应用通过重复渲染来实现用户交互，为了提高效率，React利用Virtual DOM，让每次渲染都只重新渲染最少的DOM元素。

    - DOM（Document Object Model）是结构化文本的抽象表达形式，特定于Web环境中，这个结构化文本就是HTML文本，HTML中的每个元素都对应DOM中某个节点，这样，因为HTML元素的逐级包含关系，DOM节点自然就构成了一个树形结构，称为DOM树。

    - 浏览器为了渲染HTML格式的网页，会先将HTML文本解析以构建DOM树，然后根据DOM树渲染出用户看到的界面，当要改变界面内容的时候，就去改变DOM树上的节点。

    - Web前端开发关于性能优化有一个原则：尽量减少DOM操作。虽然DOM操作也只是一些简单的JavaScript语句，但是DOM操作会引起浏览器对网页进行重新布局，重写绘制，这就是一个比JavaScript语句执行慢很多的过程。

    - JSX看起来很像一个模板，但是最终会被Babel解析为一条条创建React组件或者HTML元素的语句，神奇之处在于，React并不是通过这些语句直接构建DOM树，而是首先构建Virtual DOM。

    - 既然DOM树是对于HTML的抽象，那Virtual DOM就是对DOM树的抽象。Virtual DOM不会触及浏览器的部分，只是存在于JavaScript空间的树形结构，每次自上而下渲染React组件时，会对比这一次产生的Virtual DOM和上一次渲染的Virtual DOM，对比就会发现差别，然后修改真正的DOM树时就只需要触及差别中的部分就行。

  + React的程序流程

    - 事件 -> render -> Virtual DOM -> DOM修改
