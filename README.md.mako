artwork
=======

Some of my art (for some definition of art)

Gallery
-------

<style>
    .outer {
        float: left; width: auto; height: auto; margin: 5px; text-align: center;
    }

    .outer img {
        display: inline; margin: 5px; border: 2px solid #DDD;
    }

    .inner {
        text-align: center; width: 120px; margin: 3px;
    }
</style>

<%!
import os
from glob import glob
thumbs = glob("thumbs/*.jpg")
%>

% for path in thumbs:
    <% name = " ".join([x.capitalize() for x in os.path.splitext(os.path.split(path)[1])[0].split("_")]) %>
    <% svg = "svg/{0}.svg".format(os.path.splitext(os.path.split(path)[1])[0]) %>
<div class="outer">
<a href="https://raw.github.com/synesthesiam/artwork/master/${svg}">
<img src="https://raw.github.com/synesthesiam/artwork/master/${path}" />
</a>
<div class="inner">
${name}
</div>
</div>
% endfor
