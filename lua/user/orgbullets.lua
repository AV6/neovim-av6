local status_ok, orgbullets = pcall(require, "org-bullets")
if not status_ok then
	return
end

orgbullets.setup({
    concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
    symbols = {
      -- headlines can be a list
      headlines = { "◉", "○", "✸", "✿" },
      -- or a function that receives the defaults and returns a list
      checkboxes = {
        half = { "", "OrgTSCheckboxHalfChecked" },
        done = { "✓", "OrgDone" },
        todo = { " ", "OrgTODO" },
      },
    }

})
