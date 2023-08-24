<form>
  # <%= form_with url: new_article_path, method: :get do |form| %> 
  # <%# <%= form_with model: blog do |form|%> %>
    <div class="mb-3">
      <%= form.label :title, class:"mb-1 form-label" %>
      <%= form.text_field :title, class:"mb-5 form-control" %>
      <%# <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> %>
    </div>
    <div class="mb-3">
      <%= form.label :description, class:"mb-1 form-label" %>
      <%= form.text_field :description, class:"mb-5 form-control" %>
    </div>
     <%# <%= form.submit class:"btn btn-primary" %> %>
      <%= form.submit  class: "btn btn-primary col-lg-4 m-1 " %>

    <%# <button type="submit" class="btn btn-primary">Submit</button> %>
  <% end %>
</form>