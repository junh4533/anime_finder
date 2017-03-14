<form method="post" action="/result1">
  
<input type="submit" value="<%=@user_anime[:anime_titles][0]%>">

</form>

<input type="hidden" value= "<%%= @user_anime %>"  name="hidden_info">

<td><%=@user_anime[:anime_titles][0]%></td>
          <td><%=@user_anime[:anime_ratings][0]%></td>
          <td><%=@user_anime[:anime_synopsis][0]%></td>
          <td> <img src="<%=@user_anime[:anime_images][0]%>"> </td>
         
         
         <% @result1_info %>