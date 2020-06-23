import {Add} from './tags/Add'
import {Logo} from './tags/Logo'
let counter = 0

css @root, body
	p:0
	m:0
	1radius: 5px
	box-sizing: border-box

tag Card
	def incr
		counter++
	def render
		<self>
			<h1.total> counter
			<Add @click.incr>
				<b> "add"
			<h3.reset @click=(do counter = 0)> "reset"
	css &
		bg: white
		w:300px py:3em px:2em radius: 2radius
		display: flex fld: column jc: center ai: middle
		ff: sans 
		shadow: xl
		& .total
			color: gray9
			fs:3em
			mt:0px
		& .reset
			color: gray4 @hover: purple6 @active: purple9 cursor: pointer
tag app-root
	def render
		<self>
			<Logo>
			<Card>
	css &
		display: flex
		fld: column
		ai:center
		ta:center
		bg:gray9
		h: 100vh
		br: 2space

// Smart styles Documentation [WIP]
// https://github.com/imba/imba.io/blob/v2-styles/content/articles/styling.md
// https://github.com/imba/imba.io/blob/v2-styles/content/guides/15-styling.md
// https://github.com/imba/imba/blob/master/src/compiler/styler.imba
// https://github.com/imba/imba/pull/362

