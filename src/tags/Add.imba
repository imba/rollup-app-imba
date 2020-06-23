

export tag Add
	def render
		<self>
			<button> <b> <slot> "click me"
	css button
		1depth: 5px @hover: 6px @active: 3px
		--text: gray2 @hover: gray1
		--color: purple7 @hover: purple6 @active: purple7
		--shade: purple9 @hover: purple8 @active: purple9
		bg: var(--color)
		shadow: 0px 1depth var(--shade)
		color: var(--text)
		transition: all .08s
		transform: translateY(-1depth)
		radius:2 py:1 px:2
		w:100%
		& b
			font-size: 2xl
