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

% for path in thumbs:
    <% name = " ".join([x.capitalize() for x in os.path.splitext(os.path.split(path)[1])[0].split("_")]) %>
    <% svg = "svg/{0}.svg".format(os.path.splitext(os.path.split(path)[1])[0]) %>
<div style="float: left; width: auto; height: auto; margin: 5px; text-align: center;">
<a href="https://raw.github.com/synesthesiam/artwork/master/${svg}">
<img src="https://raw.github.com/synesthesiam/artwork/master/${path}" style="display: inline; margin: 5px; border: 2px solid #DDD;" />
</a>
<div style="text-align: center; width: 120px; margin: 3px;">
${name}
</div>
</div>
% endfor
