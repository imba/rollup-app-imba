export tag Add
	def render
		<self>
			<button>
				<slot> "click me"
	css button
		radius:2 py:1 px:2
		color:gray2 @hover: gray1
		w:100%
		cursor: pointer border: none;
		font-size: 2xl
		bg:purple7 @hover:blue6 @active:blue6
		transition: all .08s

		bg:purple7 @hover:purple6 @active:purple7
		shadow: 0px 5px purple9 @hover: 0px 6px purple8 @active: 0px 3px purple9
		transform: translateY(-5px) @hover:translateY(-6px) @active: translateY(-3px)
