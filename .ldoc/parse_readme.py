#!/usr/bin/env python

import sys, os, codecs, errno, shutil


f_script = os.path.realpath(__file__)
d_ldoc = os.path.dirname(f_script)
d_root = os.path.dirname(d_ldoc)

f_readme_src = os.path.join(d_root, "README.md")
f_readme_tgt = os.path.join(d_ldoc, "README.md")

if not os.path.isfile(f_readme_src):
	print("ERROR: source README.md does not exists")
	sys.exit(errno.ENOENT)

print("\nparsing {}".format(f_readme_src))

buffer = codecs.open(f_readme_src, "r", "utf-8")
if not buffer:
	print("ERROR: could not open source README.md for reading")
	sys.exit(1)

r_data = buffer.read()
buffer.close()

r_data = r_data.replace("\r\n", "\n").replace("\r", "\n")
r_lines = r_data.split("\n")
r_lines_pre = []
r_lines_post = []
table = []

mid = False
post = False
for line in r_lines:
	if line.startswith("###"):
		line = line.rstrip(":")

	'''
	if line.count("_") > 1:
		line = line.replace("_", "\\_")
	'''

	if "src=\"screenshot.png\"" in line:
		line = line.replace("screenshot.png", "../screenshot.png")

	if line.startswith("|"):
		mid = True

	if mid:
		if line.startswith("|"):
			if line.startswith("| Filename"):
				line = "{}\n".format(line.lstrip("| ").rstrip(" |")).replace("_", "\\_")
			else:
				line = "- {}".format(line.lstrip("|").rstrip(" |"))

			while "  " in line:
				line = line.replace("  ", " ")

			if line.replace("-", "").replace("|", "").strip() == "":
				continue

		if line.startswith("#####"):
			line = "<br/>\n{}".format(line)

		table.append(line)

	if line == "### Usage:":
		post = True
		mid = False
		continue

	if post:
		r_lines_post.append(line)
	elif not mid:
		r_lines_pre.append(line)

buffer = codecs.open(f_readme_tgt, "w", "utf-8")
if not buffer:
	print("ERROR: could not open target README.md for writing")
	sys.exit(1)

buffer.write("{}\n\n{}\n\n{}".format("\n".join(r_lines_pre), "\n".join(table), "\n".join(r_lines_post)))
buffer.close()

print("Exported README.md to {}\n".format(f_readme_tgt))
