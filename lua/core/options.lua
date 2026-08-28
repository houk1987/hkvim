local opts = {
	number = true,
	tabstop=2,
	expandtab=true,
	sts=2,
	sw=2,
  cul=true,
  cuc=true,
}

for k,v in pairs(opts)do
	vim.opt[k]=v
end
