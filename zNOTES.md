
16 examples, 2 failures

NOTE This uses *args in strong params
NOTE ERROR:     Unable to find xpath "/html"
        Means form is correct and should now build the controller method


OPEN LAB:       
    learn open rails-cru-form_for-lab

BYEBUG


STEP 1  Generate routes

    rails g resource Artist name:string bio:text --no-test-framework
    rails g resource Genre name:string --no-test-framework
    rails g resource Song name:string artist_id:integer genre_id:integer --no-test-framework

    NOTE Created routes, migration table, controller, model, folder in views

STEP 2 RUN rails db:migrate

STEP 3 RUN rails db:seed

NOTE BUILT Index pages though not required in this Lab

STEP 4 BUILD Show page for [Artist, Song, Genre]
    NOTE Add links to Song page

        INCORRECT Returns to Song show page instead of Genre page
            <h3>Genre: <%= link_to @song.genre.name, song_path(@song) %>
        INCORRECT Error =>> @genre is nil   =>> undefined method `id' for nil:NilClass
            <%= (link_to @song.genre.name, genre_path(@genre.id)) %>
            
        CORRECT 
            <%= (link_to @song.genre.name, genre_path(@song.genre)) %></br></br>
            <%= (link_to @song.artist.name, artist_path(@song.artist)) %>
        CORRECT
            <%= (link_to @song.genre.name, genre_path(@song.genre.id)) %>
            <%= (link_to @song.artist.name, artist_path(@song.artist.id)) %>

        SOLUTION
            <%= (link_to @song.artist.name, artist_path(@song.artist)) if @song.artist %> 
            <%= (link_to @song.genre.name, genre_path(@song.genre)) if @song.genre %>


STEP 5 BUILD New form for [Artist, Song, Genre]
    NOTE Controller:    def new
                            @artist = Artist.new
                        end

    NOTE Can't use :@song: ERROR: undefined method `artist' for :@song:Symbol
        INCORRECT:      <%= new_song_form.text_field :@song.artist.id %>
                        <%= new_song_form.text_field :@song.artist %>
        INCORRECT:      <%= new_song_form.text_field :@song.genre.id %>
                        <%= new_song_form.text_field :@song.genre %>

    NOTE Can't use .id ERROR:   undefined method `id' for :artist:Symbol
        INCORRECT:      <%= new_song_form.text_field :artist.id %>
                        <%= new_song_form.text_field :genre.id %>

    NOTE ERROR:     Unable to find field "song[artist_id]" that is not disabled
        INCORRECT:      <%= new_song_form.text_field :artist %>
                        <%= new_song_form.text_field :genre %>

        CORRECT:        <%= new_song_form.text_field :artist_id %>
                        <%= new_song_form.text_field :genre_id %>

     

        <h1>New Artist Form</h1>

        <%= form_for(@artist) do |artist_form| %>
            <label>Artist name:</label><br>
            <%= artist_form.text_field :name %><br>

            <label>Artist bio:</label><br>
            <%= artist_form.text_field :bio %><br>
        
            <%= artist_form.submit %>
        <% end %>

    NOTE Form is correct if ERROR:     Unable to find xpath "/html"

STEP 6 BUILD Create method in the [Artist, Song, Genre] Controller

STEP 7 BUILD Edit form for [Artist, Song, Genre]
    NOTE Controller:    def edit
                            @song = Song.find(params[:id])
                        end

    NOTE Form is correct if ERROR:     Unable to find xpath "/html"

STEP 8 BUILD Update method in the [Artist, Song, Genre] Controller






