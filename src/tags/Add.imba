###
  box-shadow: 0 0 0 1px #c63702 inset,
              0 0 0 (@btn-box-height / 4) rgba(255, 255, 255, 0.15) inset,
              0 @btn-box-height 0 0 #C24032,
              0 @btn-box-height 0 1px rgba(0, 0, 0, 0.4),
              0 @btn-box-height @btn-box-height 1px rgba(0, 0, 0, 0.5);
###
export tag Add
	def render
		<self>
			<button> <span> <slot> "click me"
	css button
		1depth: 3px @hover: 4px @active: 0px
		--text: purple2 @hover: purple1
		--color: purple7 @hover: purple6 @active: purple6
		--shade: purple9 @hover: purple8 @active: purple9
		bg: var(--color)
		transition: all .20s
		transform: translateY(-2depth)
		radius: 100%
		h: 100px w: 100px
		my: 2em
		box-shadow:0 0 0 1px purple7 inset, 0 0 0 .25depth purple5/15 inset, 0 2depth 0 0 purple8, 0 2depth 0 1px purple5/40, 0 2depth 2depth 1px purple5/30
		box-shadow@active: 0 0 0 1px purple7 inset, 0 0 0 .25depth purple7/15 inset, 0 0 0 1px purple7/40
		& span 
			fs:5xl
			fw: bold
			color: var(--text)
