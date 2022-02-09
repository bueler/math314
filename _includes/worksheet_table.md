{% assign data = include.data %}
<table class="asst-table">
{% for ws in data.worksheets %}
<tr>
	<td>{{ ws.name }}</td>
	<td>
		<table class="inner">
			{% if ws.blank %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ ws.blank }}">blank</a></td>
			</tr>
			{% endif %}
			{% if ws.solutions %}
			<tr>
			    <td><a href="{{ data.home }}/{{ ws.solutions }}">solutions</a></td>
			</tr>
			{% endif %}
			{% if ws.file %}
			<tr>
			    <td><a href="{{ data.home }}/{{ ws.file }}">{{ ws.file }}</a></td>
			</tr>
			<tr>
			    <td>({{ ws.description }})</td>
			</tr>
			{% endif %}
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
