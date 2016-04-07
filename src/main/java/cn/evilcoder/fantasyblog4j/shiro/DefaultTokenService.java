package cn.evilcoder.fantasyblog4j.shiro;

import org.springframework.stereotype.Service;

import java.util.UUID;
@Service
public class DefaultTokenService implements TokenService {

	@Override
	public String generateToken() {
		UUID uuid=UUID.randomUUID();
		return uuid.toString();
	}

}
