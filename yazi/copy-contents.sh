#!/bin/sh
f="$1"
case "$(file -b --mime-type "$f")" in
image/*)
	osascript -l JavaScript - "$f" <<'EOF'
ObjC.import('AppKit');
function run(argv) {
	const img = $.NSImage.alloc.initWithContentsOfFile(argv[0]);
	const pb = $.NSPasteboard.generalPasteboard;
	pb.clearContents;
	pb.writeObjects($.NSArray.arrayWithObject(img));
}
EOF
	;;
*) pbcopy <"$f" ;;
esac
