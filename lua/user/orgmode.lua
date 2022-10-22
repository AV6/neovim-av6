local status_ok, orgmode = pcall(require, "orgmode")
if not status_ok then
    return
end

orgmode.setup_ts_grammar()
orgmode.setup({
    org_agenda_files = {'~/org/*'},
    org_default_notes_file = '~/org/notes.org',
    mappings = {
        global = {
            org_agenda = '<leader>aa',
            org_capture = '<leader>ac',
        },

        org = {
            org_toggle_checkbox = '<leader>d'

        }
    }
})


