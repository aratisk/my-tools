In chrome download 
1)react detector
2) react developer tools.(insalled)

check out airbnb --> components tab to check the components and props used.
do we need babel? js compiler ==> insert babel line in head if the browser does not support ES6 and add script type in the body

install nodejs. check the node -v and npm -v

install vscode if you dont ahve already (register code as an editor for supported file types option select b4 installing)

open a new html5 in vscode and go to reactjs.org and copy the cdn links to the head of html

from uplatz (udemy)
React in a gist is : open source,component based archietecture,single page application,virtual DOM based.react uses jsx

after install node.js , try writing a simple pgm to test it. using Node nodepgm.js
NPM manages the dependency using package.json
webpack - 5 principles
entry ie normally ./src/index.js
output  ./dist/main.js
loaders:
plugins
mode : production etc..

npx create-react-app client  --> installs all the webpack,plugin etc
cd to client and run npm install --save --> this will install all the dependencies from package.json? to the node_modules folder

Props : properties that can pass values between components.Whereas State is used to manage a components own data.
Props pass from parent to child ie uni-directional. Props are read-only ie cannot be modified by the accessing component. State is pvt outside the component and can be modified by own component.
State was used only in class components but with React Hooks it can be used in functional components as well.

React can be created by 1)create element using string or using JSX(JavaScript XML)
When using JSX include babel along withe the react libraries.
components include the render method which returns React nodes.

https://www.taniarascia.com/getting-started-with-react/
npx create- and then did npm start
This is JSX, which stands for JavaScript XML.

With JSX, we can write what looks like HTML, and also we can create and use our own XML-like tags. Here's what JSX looks like assigned to a variable.

JSX
const heading = <h1 className="site-heading">Hello, React</h1>
Using JSX is not mandatory for writing React. Under the hood, it's running createElement, which takes the tag, object containing the properties, and children of the component and renders the same information. The below code will have the same output as the JSX above.

No JSX
const heading = React.createElement('h1', {className: 'site-heading'}, 'Hello, React!')
JSX is actually closer to JavaScript, not HTML, so there are a few key differences to note when writing it.

className is used instead of class for adding CSS classes, as class is a reserved keyword in JavaScript.
Properties and methods in JSX are camelCase - onclick will become onClick.
Self-closing tags must end in a slash - e.g. <img />
JavaScript expressions can also be embedded inside JSX using curly braces, including variables, functions, and properties.

const name = 'Tania'
const heading = <h1>Hello, {name}</h1>

custom class component vs simple component which is a function. This component doesn't use the class keyword.
As a wrap up, let's compare a simple component with a class component.

Simple Component
const SimpleComponent = () => {
  return <div>Example</div>
}
Class Component
class ClassComponent extends Component {
  render() {
    return <div>Example</div>
  }
}



