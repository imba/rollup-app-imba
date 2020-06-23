import {Add} from './tags/Add'
import {Logo} from './tags/Logo'
let counter = 0
### 
Imba has a revolutionary styling system. Think of a pre-processor, mixed with a css utility framework like tailwind, mixed with javascript.
Your styles will be compiled at build time, and there are no un-used styles or classes in your build.
The styles below are applied to the root and the body, and they are in the global scope because they are at the root level of the document.
And by the way, closing declarations with colons is optional.
###
css @root, body
	1radius: 5px
	p:0	m:0
	box-sizing: border-box

###
the <app-root> component is explicitly specified in the public/index.html file.
Any component placed inside of the app-root component, will be injected into the dom.
As you can see we have a Logo component and a Card component inside of <self> which is the <app-root> component itself.
The <Logo> comported is imported from an external module. The <Card> Component is declared in the same document.
###

tag app-root
	def render
		<self>
			<Logo>
			<Card>
	###
	Here we have some scoped CSS. Any css declared within a tag component is scoped.
	Scoped css will spare you a lot of classes and ID's to style what you want to style.
	And it will help separate your concerns by components, rather than by technologies.
	All css properties and values are supported in Imba styles, but the most commonly used ones have a shorthand.
	For example: background-color -> bg, flex-direction -> fld, align-items -> ai, etc. 
	`&` stands for "self". It the selector for the app-root component itself. 
	See if you can tell what styles are being applied.
	###
	css &
		display: flex fld: column ai:center	
		ta:center
		bg:gray9 min-height: 100vh

###
This Card component could be in it's own document, 
but we're just demonstrating that you may have multiple tags in a single document.
###
tag Card
	def incr
		counter++
	def render
		<self>
			<h1.total> counter
			<Add @click.incr> "add"
			<h3.reset @click=(do counter = 0)> "reset"
	css &
		bg: white ff: sans shadow: xl
		w:300px py:3em px:2em radius: 2radius
		display: flex fld: column jc: center ai: middle
		& .total
			color: gray9 fs:3em	mt:0px
		& .reset
			color: gray4 @hover: purple6 @active: purple8 
			cursor: pointer user-select: none

### Learn more about Imba 2 (Work In Progress Documentation)
https://v2.imba.io/
###
