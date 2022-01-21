{% assign data = include.data %}
<table class="asst-table">
{% for hw in data.homework %}
<tr>
	<td>{{ hw.name }}</td>
	<td>
		<table class="inner">
		  {% if hw.due %}
		  <tr>due {{ hw.due }}</tr>
		  {% endif %}
		  {% if hw.blank %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ hw.blank }}">PDF</a></td>
			</tr>
		  {% endif %}
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>