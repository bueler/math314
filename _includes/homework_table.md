{% assign data = include.data %}
<table class="asst-table">
{% for hw in data.homework %}
<tr>
	<td>{{ hw.name }}, due {{ hw.due }}:</td>
	<td>
		<table class="inner">
		  {% if hw.blank %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ hw.blank }}">PDF</a></td>
			</tr>
		  {% endif %}
		</table>
	</td>
</tr>
{% endfor %}
</table>