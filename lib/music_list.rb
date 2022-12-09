class MusicList 
    def initialize
        @list = []
    end
    def add_track(track)
        @list << track
    end
    def track_list
        raise 'No tracks to print' if @list == []
        @list
    end
end