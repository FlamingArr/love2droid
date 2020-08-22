require("buildData.config")

local raw, msg = io.open("rawManifest.xml", 'r')

assert(raw, msg)
local data = raw:read('a')

raw:close()

print("____DATA FROM CONFIG____")
print(packageName)
print(versionCode)
print(versionSemantic)
print(gameName)
print("\n\n\n")

data = data:gsub("${GamePackageName}", packageName)
data = data:gsub("${GameVersionCode}", versionCode)
data = data:gsub("${GameVersionSemantic}", versionSemantic)
data = data:gsub("${GameName}", gameName)

print("_____MANIFEST AFTER GSUBS____")
print(data)
print("\n\n\n")

local gen, msg = io.open("genManifest.xml", 'w+')
assert(gen, msg)

gen:write(data)
gen:flush()
gen:close()

print("DATA WRITTEN!")

os.exit(0)
