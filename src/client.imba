import {dict} from './dict.js'
import {app-root} from './app-root'

### css
html,body {
    width: 100%;
    height: 100%;
    margin: 0px;
    font-family: Arial;
}

body {
    display: block;
    font-size: 14px;
    align-items: stretch;
    justify-content: center;
    flex-direction: column;
    background: whitesmoke;
    padding: 30px;
	min-height: 80vh;
}

body,div,form,header,footer,section,input,button,nav,aside,article {
    box-sizing: border-box;
}

div,section,input,ul,main,article,.grow {
    flex: 1 1 auto;
}

input {
    display: block;
    padding: 0px 12px;
    background: transparent;
    border: none;
    font-size: inherit;
    width: 50px;
    height: 24px;
}

header,footer {
    flex: 0 0 auto;
    display: flex;
    flex-direction: row;
    justify-content: flex-start;
    align-items: center;
    padding: 10px 6px;
    background: #e8e8e8;
}

###



