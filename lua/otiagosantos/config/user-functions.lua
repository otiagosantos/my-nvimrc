-- otiagosantos - https://github.com/otiagosantos - otiagosantos.code@gmail.com - 2024

-- LSP buf comands automate:

local function Code_actions()
	vim.lsp.buf.code_action()
end

local function Definition()
	vim.lsp.buf.definition()
end

local function Format()
	vim.lsp.buf.format()
end

local function Hover()
	vim.lsp.buf.hover()
end

vim.api.nvim_create_user_command('Lsp', function(args)
		if args.fargs[1] == 'definition' then
			Definition()
		elseif args.fargs[1] == 'hover' then
			Hover()
		elseif args.fargs[1] == 'code_actions' then
			Code_actions()
		elseif args.fargs[1] == 'format' then
			Format()
		end
	end,
	{
		nargs = '+',
		complete = function()
			return {
				'code_actions',
				'definition',
				'format',
				'hover',
			}
		end
	})
