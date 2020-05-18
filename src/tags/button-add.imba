tag button-add
	css & button
		bg:yellow400  bg.hover:yellow300 bg.active:yellow400
		radius:2 
		py:1 px:2
		color:gray700
		cursor:pointer
		border: none;
		fw:bold 
		font-size:2xl
	def render
		<self>
			<button>
				<slot> "click me"