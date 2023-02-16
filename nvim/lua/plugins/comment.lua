-- gcc for comment & uncomment
-- gc 9j for multiple line comment/uncomment

local setup, comment = pcall(require, "Comment")
if not setup then return end

comment.setup()
