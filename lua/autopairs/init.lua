




















vim.g.AutoPairsFlyMode = 1
vim.g.AutoPairsMapCR = 1
vim.cmd[[ au FileType rust     let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'}) ]]
vim.cmd[[  au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'}, ['{']) ]]
























