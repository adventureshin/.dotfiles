local map = vim.keymap.set

-- 한글 IME 대응
vim.cmd("cabbrev ㅈ w")
vim.cmd("cabbrev ㅂ q")
vim.cmd("cabbrev ㅈㅂ wq")

-- ; → :
map("n", ";", ":")

-- Home/End
map("i", "<C-a>", "<ESC>I")
map("i", "<C-e>", "<End>")
map("n", "<C-a>", "^")
map("n", "<C-e>", "$")
map("v", "<C-a>", "^")
map("v", "<C-e>", "$")

-- 파일 저장
map("n", "<C-s>", "<cmd>update<CR>", { silent = true })
map("i", "<C-s>", "<ESC><cmd>update<CR>", { silent = true })
map("v", "<C-s>", "<ESC><cmd>update<CR>", { silent = true })

-- 들여쓰기
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- 창 분할 & 리사이즈
map("n", "<A-->", "<cmd>split<CR>", { silent = true })
map("n", "<A-\\>", "<cmd>vertical split<CR>", { silent = true })
map("n", "<A-h>", "<cmd>vertical resize -5<CR>", { silent = true })
map("n", "<A-j>", "<cmd>resize -3<CR>", { silent = true })
map("n", "<A-k>", "<cmd>resize +3<CR>", { silent = true })
map("n", "<A-l>", "<cmd>vertical resize +5<CR>", { silent = true })

-- 탭 네비게이션
map("n", "<A-t>", "<cmd>tabnew<CR>")
for i = 1, 9 do
  map("n", "<A-" .. i .. ">", i .. "gt")
end
