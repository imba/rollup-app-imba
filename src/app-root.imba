import {dict} from './dict.js'
tag app-root
	@containerWidth = "container max-w-screen-md mx-auto block"
	@query = ''
	def render
		<self>
			<div
				.{"
					text-center
					bg-gray-800
					text-white
					py-2
					text-gray-100
				"}>
				<div .{@containerWidth}>
					"english-cham dictionary | {dict.length} words"
			<header.bg-gray-900.flex.p-12>
				<div .{@containerWidth}.flex>
					<input[@query] #myInput 
						.{"
							flex-1
							rounded-lg
							py-2
							px-4
							bg-white
							w-auto
							shadow-xl
						"}	placeholder="search">
			<main .{"
				result
				flex
				bg-gray-200
				min-h-screen
				p-12
				shadow-md
				"}>
				<div .{@containerWidth}.flex>
					<search-results search=@query>
tag search-results
	@match = true
	def render
		<self>
			<div>
				<ul>
					for word in dict
						if word.eng[0].toLowerCase().includes(#context.query.toLowerCase())
							@match = true
						elif word.eng[1] and word.eng[1].toLowerCase().includes(#context.query)
							@match = true
						elif word.cham[0].toLowerCase().includes(#context.query)
							@match = true
						else
							@match = false
						
						if @match is false
							<result-word.hidden english=word.eng cham=word.cham>
						else
							<result-word.visible english=word.eng cham=word.cham>
tag result-word < li
	def render
		<self
			.{"
				p-5
				bg-white
				mb-2
				rounded-md
				flex
			"}> 
			<div.flex-1>
				for e, k in @english
					if k is 0 
						<span> "{e}"
					else
						<span> ", {e}"
			<div>
				for c in @cham
					<b> "{c}"
			
### css scoped

# app-root {
# }
# app-root ul {
# 	list-style-type: none;
# 	margin: 0;
# 	padding: 0 20px;
# }
# .dictCount {
# 	width: 100%;
# 	text-align: center;
# 	padding: 5px;
# }
# .wordtotal {
# 	text-align: center;
# 	padding: 10px;
# }
# .vbox {
# 	background-color: white;
# }
# .results > li {
# 	padding: 10px;
# 	padding-left: 10px;
# 	border-bottom: 1px solid whitesmoke;

# }
# .result ol {
# 	list-style-type: upper-roman
# }
# .result .word {
# }
# .partOfSpeech {
# 	color: #ccc;
# 	font-weight: light
# 	margin-bottom: 10px;
# 	font-size: .9rem;	
# }
# .result ol li{
# 	margin-bottom: 10px;
# }
.word > * {
	display:none;
}
.show {
	display: inline-block;
}
###

### css
# html,body {
#     width: 100%;
#     height: 100%;
#     margin: 0px;
#     font-family: Arial;
# }

# body {
#     display: block;
#     font-size: 14px;
#     align-items: stretch;
#     justify-content: center;
#     flex-direction: column;
#     background: whitesmoke;
#     padding: 30px;
# 	min-height: 80vh;
# }

# body,div,form,header,footer,section,input,button,nav,aside,article {
#     box-sizing: border-box;
# }

# div,section,input,ul,main,article,.grow {
#     flex: 1 1 auto;
# }

# input {
#     display: block;
#     padding: 0px 12px;
#     background: transparent;
#     border: none;
#     font-size: inherit;
#     width: 50px;
#     height: 24px;
# }

# header,footer {
#     flex: 0 0 auto;
#     display: flex;
#     flex-direction: row;
#     justify-content: flex-start;
#     align-items: center;
#     padding: 10px 6px;
#     background: #e8e8e8;
# }

###
