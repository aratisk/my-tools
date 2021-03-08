In chrome download 
1)react detector
2) react developer tools.

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

React can be created by 1)create element using string or using JSX
When using JSX include babel along withe the react libraries.
components include the render method which returns React nodes.



