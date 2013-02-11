artwork
=======

Some of my art (for some definition of art)

Gallery
-------

<%!
import os
from glob import glob
thumbs = glob("thumbs/*.jpg")
%>

<table>
<tr>
% for i, path in enumerate(sorted(thumbs)):
    <% name = " ".join([x.capitalize() for x in os.path.splitext(os.path.split(path)[1])[0].split("_")]) %>
    <% svg = "svg/{0}.svg".format(os.path.splitext(os.path.split(path)[1])[0]) %>
<td>
<a href="https://raw.github.com/synesthesiam/artwork/master/${svg}">
<img src="https://raw.github.com/synesthesiam/artwork/master/${path}" />
</a><br />
${name}
</td>
% if i % 4 == 0:
</tr>
<tr>
% endif
% endfor
</tr>
</table>
