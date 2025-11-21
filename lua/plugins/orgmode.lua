return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
				org_archive_location = '~/orgfiles/archive/%s_archive::'
      })
    end,
  },
  {
    'nvim-orgmode/org-bullets.nvim',
    ft = 'org',               -- lazy-load for org files
    config = function()
      require('org-bullets').setup()
    end,
  },
}
