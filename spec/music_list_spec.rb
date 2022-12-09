require 'music_list'

describe MusicList do
    context 'Adding a track' do 
        it 'add the track' do
            track = MusicList.new
            track.add_track('hello')
            expect(track.instance_variable_get(:@list)).to eq ['hello']
        end
    end

    context 'there is a single track on the list' do
        it 'will return track' do
            track = MusicList.new
            track.add_track('hello')
            expect(track.track_list).to eq ['hello']
        end
    end
    context 'there is multiple tracks on the list' do
        it 'will return all tracks' do
            track = MusicList.new
            track.add_track('hello1')
            track.add_track('hello2')
            expect(track.track_list).to eq ['hello1', 'hello2']
        end
    end
    context 'there are no tracks to print' do
        it 'will raise an error' do
            track = MusicList.new 
            expect{ track.track_list }.to raise_error 'No tracks to print'
        end
    end
end