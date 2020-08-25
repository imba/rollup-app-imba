export tag Button
	def render
		<self>
			<button>
				<span> 
					<slot> "click me"
	css button
		$text: orange2 @hover: orange1
		$color: orange5 @hover: orange4 @active: orange5
		$shade: orange5 @hover: orange4 @active: orange6
		1depth: 4px @hover: 5px @active: 0px
		bg: $color
		transition: all .20s
		transform: translateY(-2depth)
		rd: full
		h: 100px min-width: 100px
		my: 2em
		# surface border
		bxs: 0 0 0 3px orange1/20 inset, 0 0 0 .25depth orange4/15 inset, 0 2depth 0 2px orange8, 0 2depth 0 0px orange1/40, 0 2depth 2depth 3px orange5/30 @hover: 0 0 0 3px orange1/20 inset, 0 0 0 .25depth orange5/15 inset, 0 2depth 0 0 orange8, 0 2depth 0 1px orange9/40, 0 2depth 2depth 1px orange5/30	
		# button glow
		bxs@active: 0 0 0 3px orange1/10 inset, 0 2depth 0 0 orange7 inset, 0 1depth 0 3px orange8
		& span 
			fs:5xl
			fw: bold
			color:$text
