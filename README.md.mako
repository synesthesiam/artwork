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
${name}
![${name}](https://raw.github.com/synesthesiam/artwork/master/${path})
% endfor
