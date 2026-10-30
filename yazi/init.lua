local mocha = {
	text = "#cdd6f4",
	surface0 = "#313244",
	surface1 = "#45475a",
	surface2 = "#585b70",
	green = "#a6e3a1",
	crust = "#11111b",
}

function Tabs:redraw()
	if self.height() < 1 then
		return {}
	end

	local tabs, pos = {}, 0
	local max = math.max(1, math.floor(self._area.w / #cx.tabs) - 10)
	for i = 1, #cx.tabs do
		local active = i == cx.tabs.idx
		local num_bg = active and mocha.green or mocha.surface1
		local text_bg = active and mocha.surface2 or mocha.surface0
		local tab = ui.Line {
			ui.Span("\u{e0b6}"):fg(num_bg),
			ui.Span(" " .. i .. " "):fg(active and mocha.crust or mocha.text):bg(num_bg),
			ui.Span("\u{e0b4}"):fg(num_bg):bg(text_bg),
			ui.Span("  " .. ui.truncate(cx.tabs[i].name, { max = max }) .. " "):fg(mocha.text):bg(text_bg),
			ui.Span("\u{e0b4}"):fg(text_bg),
		}
		if i > 1 then
			tabs[#tabs + 1] = ui.Line(" ")
			pos = pos + 1
		end
		self._offsets[i], pos = pos, pos + tab:width()
		tabs[#tabs + 1] = tab
	end

	-- keep mouse click offsets in sync with the centered position
	local pad = math.max(0, math.floor((self._area.w - pos) / 2))
	for i = 1, #cx.tabs do
		self._offsets[i] = self._offsets[i] + pad
	end
	return ui.Line(tabs):area(self._area):align(ui.Align.CENTER)
end
