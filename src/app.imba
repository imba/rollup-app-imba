import './tags/button-add'
import './tags/imba-logo'
var counter = 0
css body = p:0 m:0
tag app-card
	css &
		bg:white 
		shadow:xl 
		w:150px 
		py:3
		radius:1
		layout:block
		text-align:center  
		font-family:sans-serif 
		font-weight:bold

	css .reset 
		display:block 
		my:1
		c:gray400 
		c.hover:gray500 
		cursor:pointer
		font-size: .6em;
	def incr
		counter++
	def render
		<self>
			<h1.total .(c:gray600)> counter
			<button-add @click.incr> "add one"
			<a.reset @click=(do counter = 0)> "reset"

tag app-root
	css &
		layout: flex flex-direction: column align-items: center
		bg:gray900
		h: 100vh
	def render
		<self>
			<imba-logo>
			<app-card>
###
Smart styles Documentation [WIP]
https://github.com/imba/imba.io/blob/v2-styles/content/articles/styling.md
https://github.com/imba/imba.io/blob/v2-styles/content/guides/15-styling.md
https://github.com/imba/imba/blob/master/src/compiler/styler.imba
###