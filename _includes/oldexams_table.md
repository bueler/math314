{% assign data = include.data %}
<table class="asst-table">
{% for exam in data.exams %}
<tr>
	<td> 
		<table class="inner">
		  <tr>
			    <td>{{ exam.name }}</td>
			</tr>
		  <tr>
			    <td>&nbsp;</td>
			</tr>
			{% for ff in exam.files %}
 			<tr>
			    <td>{{ ff.semester }}</td>
					<td>
						<table class="inner">
						  {% if ff.blank %}
							  <tr>
		    			    <td><a href="{{ ff.home }}/{{ ff.blank }}">blank</a></td>
								</tr>
							{% endif %}
						  {% if ff.solutions %}
							  <tr>
		    			    <td><a href="{{ ff.home }}/{{ ff.solutions }}">solutions</a></td>
								</tr>
							{% endif %}
					  </table>
         		<div style="padding-bottom: 10px"></div>
					</td>
			</tr>
			{% endfor %}
		</table>
	</td>
</tr>
{% endfor %}
</table>
