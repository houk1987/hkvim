local opts = {
	number = true,
  rnu=true,
	tabstop=2,
	sts=2,
	sw=2,
	expandtab=true,
	cul=true,
	cuc=true,
  scl='yes',
  swf=false,
  autochdir=true,
  showmode=false,
  ic =true,
  smartcase=true,
}

for k,v in pairs(opts)do
  vim.opt[k]=v
end
