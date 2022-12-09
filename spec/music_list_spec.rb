=begin
# EXAMPLES 

track = MusicList.new
track.add_track('hello')
track.track_list # => 'hello'

track = MusicList.new
track.add_track('hello1')
track.add_track('hello2')
track.add_track('hello3')
track.track_list # => ['hello1', 'hello2', 'hello3']

track = MusicList.new
track.track_list # => 'No tracks to print'


#Add a track
#Add a track and print it 
#Add multiple tracks and print them
#Print when there isn't any tracks should throw error 
=end

require 'music_list'

describe MusicList do
    context 'Adding a track' do 
        it 'add the track' do
            track = MusicList.new
            track.add_track('hello')
            expect(track.instance_variable_get(:@list)).to eq ['hello']
        end
    end
end